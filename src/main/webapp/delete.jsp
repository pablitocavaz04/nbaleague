<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Jugador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Eliminar Jugador</h1>
            <% 
                String idString = request.getParameter("id");
                if (idString != null) {
                    int id = Integer.parseInt(idString);
                    String url = "jdbc:mysql://localhost:3306/users";
                    String usuario = "pablito";
                    String contraseña = "1234";
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(url, usuario, contraseña);
                        PreparedStatement stmt = con.prepareStatement("DELETE FROM jugadores WHERE id = ?");
                        stmt.setInt(1, id);
                        
                        int filasAfectadas = stmt.executeUpdate();
                        
                        if (filasAfectadas > 0) {
                            out.println("El jugador con el ID " + id + " ha sido eliminado correctamente.");
                        } else {
                            out.println("Error: No se encontró ningún jugador con el ID " + id + ".");
                        }
                        
                        // Cerrar conexiones
                        stmt.close();
                        con.close();
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                } else {
                    // Si no se proporciona un ID, mostrar un mensaje de error
                    out.println("Error: No se proporcionó un ID válido.");
                }
            %>
            <!-- Botón para volver a Jugadores.jsp -->
            <br>
            <br>
            <a href="jugadores.jsp" class="btn btn-primary">Volver a Jugadores</a>
        </div>
    </div>
</div>
</body>
</html>
