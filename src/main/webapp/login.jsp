<%@ page import="app.java.cinejungla.Comands" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/4/2022
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Comands comands = Comands.getInstance();
%>
<html>
<head>
  <title>Cine Jungla - Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="EstilosGeneral/login-style.css">
</head>
<body>
<div class="contenedor">
  <form action="hello-servlet" onsubmit="return getUsuario()" <% if (comands.getComando_login() == 2) {out.print("style=\"display: none\"");}%>>
    <h1 class="centrar">Control de acceso</h1>
    <h5 class="centrar">Ingreso unico personal laboral y administrativo de Cine Jungla</h5>
    <input id="codigo-user" name="codigo" type="number" class="form-control" placeholder="Codigo" aria-label="Codigo" aria-describedby="addon-wrapping">
    <input id="pass-user" name="contraseña" type="password" class="form-control" placeholder="Contraseña" aria-label="Contraseña" aria-describedby="addon-wrapping">
    <div class="d-grid gap-2">
      <button name="boton-login" value="login-usuarios" class="btn btn-primary" type="submit">Ingresar</button>
    </div>
  </form>

  <form action="hello-servlet" onsubmit="return getCliente()" <% if (comands.getComando_login() == 1) {out.print("style=\"display: none\"");}%>>
    <h1 class="centrar">Inicio Sesion</h1>
    <h5 class="centrar">Si haces parte de la comunidad por favor accede a tu cuenta</h5>
    <input id="cedula-cliente" name="cedula" type="number" class="form-control" placeholder="Cedula" aria-label="Cedula" aria-describedby="addon-wrapping">
    <input id="pass-cliente" name="password" type="password" class="form-control" placeholder="Contraseña" aria-label="Contraseña" aria-describedby="addon-wrapping">
    <div class="d-grid gap-2">
      <button name="boton-login" value="login-clientes" class="btn btn-primary" type="submit">Ingresar</button>
    </div>
    <h7 class="centrar">¿No estas registrado? unete a la comunidad aqui en <a href="registrarse.jsp">Registrarse</a></h7>
  </form>
</div>
<%
  if (comands.getPersona_logueada() == 3) {
    out.print("<script>\n" +
            "        alert(\"Persona no encontrada\")\n" +
            "    </script>");
    comands.setPersona_logueada(0);
  }
%>
<script>
  function getUsuario() {
  var codigo_user = document.getElementById("codigo-user").value;

  if (codigo_user === "" || codigo_user === null) {
    alert("Codigo sin especificar")
    return false;
  }

  var pass_user = document.getElementById("pass-user").value;

  if (pass_user === "" || pass_user === null) {
    alert("No ha ingresado su contraseña")
    return false;
  }
}

function getCliente() {
  var cedula_cliente = document.getElementById("cedula-cliente").value;

  if (cedula_cliente === "" || cedula_cliente === null) {
    alert("Cedula sin especificar")
    return false;
  }

  var pass_cliente = document.getElementById("pass-cliente").value;

  if (pass_cliente === "" || pass_cliente === null) {
    alert("No a ingresado su contraseña")
    return false;
  }
}
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script
</body>
</html>
