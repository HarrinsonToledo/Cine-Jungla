<%@ page import="app.java.cinejungla.Comands" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.SelectUsuario" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.PersonalCJ" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.Usuario" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Ingresos" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/4/2022
  Time: 01:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands comands = Comands.getInstance();
    PersonalCJ personal = PersonalCJ.getInstance();
    Ingresos ingresos = Ingresos.getInstance();

    String[] nombre = null;
    SelectUsuario usuario = SelectUsuario.getInstance();

    if (comands.getPersona_logueada() == 1) {
        nombre = usuario.getNombre().split(" ");
    }
%>
<html>
<head>
    <title>Modula de Administracion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="Administracion/admin-style.css">
</head>
<body>
<nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
    <img class="user" id="user" src="recursos/social-media.gif" width="50">
    <h4 class="user" style="color: white;"> <% if (nombre != null) { out.print(nombre[0]); }%> </h4>
    <form class="cerrarSesion" action="hello-servlet">
        <button name="cerrar-sesion" id="cerrar" value="cerrar" class="btn btn-danger my-2 my-sm-0" type="submit">Cerrar Sesion</button>
    </form>
</nav>
<div class="container-fluid mt-4">
    <div class="row ">
        <div class="col-1">
        </div>
        <div class="col-10 py-5">
            <div class="text-center">
                <img class="my-3" src="recursos/logo-titulo.png" width="450" alt="Logo cine jungla">
            </div>
            <h2 class="my-3 text-center">Modulo de administrador</h2>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item waves-effect waves-light">
                    <a class="nav-link active" id="estadisticas-tab" data-toggle="tab" href="#estadisticas" role="tab" aria-controls="estadisticas" aria-selected="true">Estadisticas</a>
                </li>
                <li class="nav-item waves-effect waves-light">
                    <a class="nav-link" id="empleados-tab" data-toggle="tab" href="#empleados" role="tab" aria-controls="empleados" aria-selected="false">Empleados</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade active show" id="estadisticas" role="tabpanel" aria-labelledby="estadisticas-tab">
                    <ul class="list-group-flush mt-2">
                        <li class="list-group-item">Ingreso por Boletas: $<%=ingresos.getIngresosBoleta()%></li>
                        <li class="list-group-item">Ingreso por Confiteria: $<%=ingresos.getIngresosSnacks()%></li>
                        <li class="list-group-item">Ingresos totales: $<%=ingresos.getIngresosBoleta() + ingresos.getIngresosSnacks()%></li>
                    </ul>
                </div>
                <div class="tab-pane fade" id="empleados" role="tabpanel" aria-labelledby="empleados-tab">
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col">Cedula</div>
                            <div class="col">Nombre</div>
                            <div class="col">Telefono</div>
                            <div class="col">Salario</div>
                            <div class="col">Cargo</div>
                            <div class="col">Multiplex</div>
                            <div class="col">Fecha Contrato</div>
                        </div>
                        <hr style="border: 4px solid black !important;">
                    </li>
                    <ul id="lista" class="list-group-flush mt-2">
                        <%
                            for (Usuario user: personal.getListado()) {

                                out.print("<li class=\"list-group-item\">\n" +
                                        "          <div class=\"row\">\n" +
                                        "               <div class=\"col\">" + user.getCedula() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getNombre() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getTelefono() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getSalario() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getCargo() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getMultiplex() + "</div>\n" +
                                        "               <div class=\"col\">" + user.getFec_ini_contrato() + "</div>\n" +
                                        "          </div>\n" +
                                        "  </li>");
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
