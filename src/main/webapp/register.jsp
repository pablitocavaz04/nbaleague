<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="users.User"%>
<link rel="shortcut icon" href="assets/img/favicon.webp" type="image/x-icon" />
<!DOCTYPE html>
<html lang="es">
<head>
    <script src="assets/js/color-modes.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            color: white;
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
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .form-signin h1 {
            font-weight: 700;
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-signin label {
            font-weight: 500;
            color: white;
        }

        .form-signin .form-control {
            border-radius: 4px;
        }

        .form-signin .btn-primary {
            background-color: #BA9653;
            border: none;
            transition: background-color 0.3s ease;
        }

        .form-signin .btn-primary:hover {
            background-color: #AA8A55;
        }

        .form-signin a {
            color: white;
        }

        .form-signin a:hover {
            color: #EFEFEF;
        }

        .text-body-secondary {
            color: #EFEFEF;
        }

        .mt-5 {
            margin-top: 3rem;
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="assets/css/sign-in.css" rel="stylesheet">
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        User user = (User)session.getAttribute("user");
        if(user!=null)
            response.sendRedirect("home.jsp");
        else{
            String error = request.getParameter("error");
        }
        
    %>

<main class="form-signin w-100 m-auto">
  <form method="POST" action="doregistration.jsp">
    <h1 class="h3 mb-3 fw-normal">Por favor regístrese</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="name" id="floatingInput1" placeholder="Juan A." required>
      <label for="floatingInput1">Nombre</label>
    </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="surname" id="floatingInput2" placeholder="Apellido" required>
      <label for="floatingInput2">Apellidos</label>
    </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="username" id="floatingInput3" placeholder="Usuario" required>
      <label for="floatingInput3">Usuario</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Contraseña" required>
      <label for="floatingPassword">Contraseña</label>
    </div>

    <div class="form-check text-start my-3">
      <a href="login.jsp" class="text-decoration-none text-body-secondary">
        Quiero iniciar sesión
      </a>
    </div>
    <button class="btn btn-primary w-100 py-2" type="submit">Regístrame</button>
    <p class="mt-5 mb-3 text-body-secondary">&copy; 2024</p>
  </form>
</main>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>