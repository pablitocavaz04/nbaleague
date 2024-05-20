<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="users.User"%>
<link rel="shortcut icon" href="assets/img/favicon.webp" type="image/x-icon" />
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesión - Boston Celtics</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url("assets/img/wp1836900-boston-celtics-wallpapers.png");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .form-signin {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .form-signin h1 {
            font-weight: 700;
            color: #00563F;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-signin label {
            font-weight: 500;
        }

        .form-signin .form-control {
            border-radius: 4px;
        }

        .form-signin .btn-primary {
            background-color: #00563F;
            border: none;
            transition: background-color 0.3s ease;
        }

        .form-signin .btn-primary:hover {
            background-color: #004930;
        }

        .form-signin a {
            color: #00563F;
        }

        .form-signin a:hover {
            color: #004930;
        }

        .text-body-secondary {
            color: #6c757d;
        }

        .mt-5 {
            margin-top: 3rem;
        }
    </style>
</head>
<body>
<main class="form-signin">
    <form method="POST" action="login.jsp">
        <h1 class="h3 mb-3">Iniciar sesión - Boston Celtics</h1>

        <div class="form-group">
            <label for="username">Usuario</label>
            <input type="text" class="form-control" name="username" id="username" placeholder="Ingrese su usuario" required autofocus>
        </div>
        <div class="form-group">
            <label for="password">Contraseña</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Ingrese su contraseña" required>
        </div>

        <div class="form-group text-start my-3">
            <a href="register.jsp">¿No tienes cuenta? Regístrate aquí</a>
        </div>
        <button class="btn btn-primary w-100 py-2" type="submit">Iniciar sesión</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; 2024 Boston Celtics</p>
    </form>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>