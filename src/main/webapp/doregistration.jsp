<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="users.AuthService"%>
<%@page import="users.User"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String surname = request.getParameter("surname");
    //Usuario de la base de datos
    String dbuser = "pablito";
    //Contraseña de la base de datos
    String dbpassword = "1234";
    //Pool de conexiones a la base de datos
    ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/users", dbuser, dbpassword);
    AuthService auth = new AuthService(pool.getConnection());
    User user = auth.register(name, surname, username, password);
    response.sendRedirect("login.jsp");
%>