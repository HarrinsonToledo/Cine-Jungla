<%@ page import="app.java.cinejungla.Comands" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 24/3/2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands login = Comands.getInstance();
%>
<html>
<head>
    <title>Cine Jungla - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="Estilos/login-style.css">
</head>
<body>
    <div class="contenedor">
        <form action="hello-servlet" <% if (login.getComando_login() == 2) {out.print("style=\"display: none\"");}%>>
            <h1 class="titulos">Control de acceso</h1>
            <h5>Ingreso unico personal laboral y administrativo de Cine Jungla</h5>
            <input name="codigo" type="number" class="form-control" placeholder="Codigo" aria-label="Codigo" aria-describedby="addon-wrapping">
            <input name="contraseña" type="password" class="form-control" placeholder="Contraseña" aria-label="Contraseña" aria-describedby="addon-wrapping">
            <div class="d-grid gap-2">
                <button name="boton" value="login-usuarios" class="btn btn-primary" type="submit">Ingresar</button>
            </div>
        </form>

        <form action="hello-servlet" <% if (login.getComando_login() == 1) {out.print("style=\"display: none\"");}%>>
            <h1 class="titulos">Inicio Sesion</h1>
            <h5>Si haces parte de la comunidad por favor accede a tu cuenta</h5>
            <input name="cedula" type="number" class="form-control" placeholder="Cedula" aria-label="Cedula" aria-describedby="addon-wrapping">
            <input name="contraseña" type="password" class="form-control" placeholder="Contraseña" aria-label="Contraseña" aria-describedby="addon-wrapping">
            <div class="d-grid gap-2">
                <button name="boton" value="login-clientes" class="btn btn-primary" type="submit">Ingresar</button>
            </div>
        </form>
    </div>
</body>
</html>
