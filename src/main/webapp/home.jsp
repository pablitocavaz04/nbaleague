<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boston Web</title>
    <link rel="stylesheet" href="assets/css/indexstyle.css">
</head>
<body>
    <div class="navbar">
        <button class="nav-button" onclick="logout()">Cerrar Sesión</button>
        <button class="nav-button" onclick="updateSession()">Actualizar Sesión</button>
    </div>
    <div class="pagina">
        <div class="titulo">
            <h1>Boston Web</h1>
            <div class="botones">
                <form method="post" action="jugadores.jsp">
                    <button class="boton" type="submit">
                        <div class="imagen"><img src="assets/img/players.png" alt="Ir a Jugadores"></div>
                        <p>Ir a Jugadores</p>
                    </button>
                </form>
                <form method="post" action="BostonCeltics-Web/index.html">
                    <button class="boton" type="submit">
                        <div class="imagen"><img src="assets/img/webicon.png" alt="Ir a Boston Web"></div>
                        <p>Ir a Boston Web</p>
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script>
        function logout() {
            // Redireccionar al usuario a la página de inicio de sesión
            window.location.href = "login.jsp";
        }

        function updateSession() {
            // Aquí puedes implementar la lógica para actualizar la sesión del usuario
            // Por ejemplo, abrir un modal o una página para cambiar la contraseña
            alert("Funcionalidad de actualización de sesión en construcción.");
        }
    </script>
</body>
</html>
    