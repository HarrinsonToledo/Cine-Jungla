<%@ page import="app.java.cinejungla.Comands" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/4/2022
  Time: 00:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands comands = Comands.getInstance();
%>
<html>
<head>
    <title>Cine Jungla - Registrarse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="EstilosGeneral/registrar-style.css">
</head>
<body>
<div class="contenedor">
    <form action="hello-servlet" onsubmit="return getRegistro()">
        <h1 class="titulos">Registrate</h1>
        <h5>Por favor ingresa los datos para registrarte</h5>
        <input id="cedula" name="cedula" type="number" class="form-control" placeholder="Cedula" aria-label="Cedula" aria-describedby="addon-wrapping">
        <input id="nombre" name="nombre" type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" aria-describedby="addon-wrapping">
        <input id="contraseña" name="contraseña" type="password" class="form-control" placeholder="Contraseña" aria-label="Contraseña" aria-describedby="addon-wrapping">
        <div class="d-grid gap-2">
            <button name="registrar" value="registro" class="btn btn-primary" type="submit">Ingresar</button>
        </div>
        <h7>¿Ya esta registrado? Por favor <a href="login.jsp">Inicia Sesion</a></h7>
    </form>
    <%
        if (comands.getRegistrar() == 1) {
            out.print("<script>\n" +
                    "        alert(\"Cliente ya existe\")\n" +
                    "    </script>");
            comands.setRegistrar(0);
        } else if (comands.getRegistrar() == 3) {
            out.print("<script>\n" +
                    "        alert(\"Error al registrar cliente\")\n" +
                    "    </script>");
            comands.setRegistrar(0);
        }
    %>
    <script>
        function getRegistro() {
            var cedula = document.getElementById("cedula").value;

            if (cedula === "" || cedula === null) {
                alert("Cedula no ingresada")
                return false;
            }

            var nombre = document.getElementById("nombre").value;

            if (nombre === "" || nombre === null) {
                alert("Nombre no ingresado")
                return false;
            }

            var contraseña = document.getElementById("contraseña").value;

            if (contraseña === "" || contraseña === null) {
                alert("Por favor ingresa una contraseña")
                return false;
            }
        }
    </script>
</div>
</body>
</html>
