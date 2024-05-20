<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Elemento</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Actualizar Elemento</h1>
            <%
                // Obtener los datos enviados desde el formulario de edición
                int id = Integer.parseInt(request.getParameter("id"));
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                int edad = Integer.parseInt(request.getParameter("edad"));
                int altura = Integer.parseInt(request.getParameter("altura"));
                String posicion = request.getParameter("posicion");
                int dorsal = Integer.parseInt(request.getParameter("dorsal"));
                
                // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                String url = "jdbc:mysql://localhost:3306/users";
                String usuario = "pablito";
                String contraseña = "1234";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, usuario, contraseña);
                    
                    // Consulta para actualizar el registro
                    String query = "UPDATE jugadores SET nombre=?, apellidos=?, edad=?, altura=?, posicion=?, dorsal=? WHERE id=?";
                    PreparedStatement pstmt = con.prepareStatement(query);
                    pstmt.setString(1, nombre);
                    pstmt.setString(2, apellidos);
                    pstmt.setInt(3, edad);
                    pstmt.setInt(4, altura);
                    pstmt.setString(5, posicion);
                    pstmt.setInt(6, dorsal);
                    pstmt.setInt(7, id);
                    
                    int rowsUpdated = pstmt.executeUpdate();
                    
                    if (rowsUpdated > 0) {
                        out.println("<div class='alert alert-success' role='alert'>Registro actualizado correctamente.</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>No se pudo actualizar el registro.</div>");
                    }
                    
                    // Cerrar conexiones
                    pstmt.close();
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
            <a href="jugadores.jsp" class="btn btn-primary">Volver al Listado</a>
        </div>
    </div>
</div>
</body>
</html>
