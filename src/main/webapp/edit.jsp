<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Elemento</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Editar Elemento</h1>
            <%
                // Obtener el ID del elemento a editar desde la solicitud
                int id = Integer.parseInt(request.getParameter("id"));
                
                // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                String url = "jdbc:mysql://localhost:3306/users";
                String usuario = "pablito";
                String contraseña = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, usuario, contraseña);
                    Statement stmt = con.createStatement();
                    
                    // Consulta para obtener los datos del elemento
                    ResultSet rs = stmt.executeQuery("SELECT * FROM jugadores WHERE id=" + id);
                    
                    if (rs.next()) {
                        // Mostrar formulario para editar el elemento
            %>
                        <form method="POST" action="update.jsp">
                            <input type="hidden" name="id" value="<%= id %>">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= rs.getString("nombre") %>">
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-control" id="apellidos" name="apellidos" value="<%= rs.getString("apellidos") %>">
                            </div>
                            <div class="form-group">
                                <label for="edad">Edad</label>
                                <input type="text" class="form-control" id="edad" name="edad" value="<%= rs.getInt("edad") %>">
                            </div>
                            <div class="form-group">
                                <label for="altura">Altura</label>
                                <input type="text" class="form-control" id="altura" name="altura" value="<%= rs.getInt("altura") %>">
                            </div>
                            <div class="form-group">
                                <label for="posicion">Posición</label>
                                <input type="text" class="form-control" id="posicion" name="posicion" value="<%= rs.getString("posicion") %>">
                            </div>
                            <div class="form-group">
                                <label for="dorsal">Dorsal</label>
                                <input type="text" class="form-control" id="dorsal" name="dorsal" value="<%= rs.getInt("dorsal") %>">
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                        </form>
            <%
                    } else {
                        out.println("Elemento no encontrado.");
                    }
                    
                    // Cerrar conexiones
                    rs.close();
                    stmt.close();
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
