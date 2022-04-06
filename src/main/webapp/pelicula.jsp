<%@ page import="app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Funcion" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>
<%@ page import="app.java.cinejungla.Comands" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.SelectUsuario" %>
<%@ page import="app.java.cinejungla.infoPersona.Clientes.SelectCliente" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2022
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SelectPelicula pelicula = SelectPelicula.getInstance();
    ArrayList<String> fechas = new ArrayList<>();

    for (Funcion fun : pelicula.getFuncionesPeli()) {
        fechas.add(fun.getDia());
    }

    Set<String> hashSet = new HashSet<String>(fechas);
    fechas.clear();
    fechas.addAll(hashSet);

    String[] nombre = null;
    Comands login = Comands.getInstance();
    SelectUsuario usuario = SelectUsuario.getInstance();
    SelectCliente cliente = SelectCliente.getInstance();

    if (login.getPersona_logueada() == 1) {
        nombre = usuario.getNombre().split(" ");
    } else if (login.getPersona_logueada() == 2) {
        nombre = cliente.getNombre().split(" ");
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="EstilosGeneral/pelicula-style.css">
    <title>Pelicula - Cine Jungla</title>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
        <img src="recursos/solo-logo.png" width="100">
        <a href="<%if (login.getPersona_logueada() == 2) {out.print("index.jsp");} else {out.print("#");}%>" style="margin-right: auto"><h2 style="color: white"><b>Cine Jungla</b></h2></a>
        <a href="acceso.jsp"><button class="btn btn-danger my-2 my-sm-0" type="submit" <% if (login.getPersona_logueada() != 0) {out.print("style=\"display: none\"");}%>>Acceder</button></a>
        <img class="user" id="user" src="recursos/social-media.gif" width="50">
        <h4 class="user" style="color: white;"> <% if (nombre != null) { out.print(nombre[0]); }%> </h4>
    </nav>
    <div id="main-container" class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="wrap-img d-flex justify-content-center">
                    <img class="img-pelicula" src="<%= pelicula.getImagen()%>" alt="<%= pelicula.getNom_pelicula()%>">
                </div>
            </div>
            <div class="col-sm-7">
                <h1><%= pelicula.getNom_pelicula()%></h1><br>
                <h3><%= pelicula.getDuracion()%></h3><br>
                <h3>Sinopsis</h3><br>
                <h5><%=pelicula.getDescripcion()%></h5>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <%
                        for (String text : fechas) {
                            out.print("<li class=\"nav-item waves-effect waves-light\">\n" +
                                    "       <button class=\"nav-link\" id=\"" + text + "-tab\" data-toggle=\"tab\" href=\"#" + text + "\" role=\"tab\" aria-controls=\"" + text + "\" aria-selected=\"false\">" + text + "</button>\n" +
                                    " </li>");
                        }
                    %>
                    <%/*<li class="nav-item waves-effect waves-light">
                        <button class="nav-link" id="fecha-tab" data-toggle="tab" href="#fecha" role="tab" aria-controls="fecha" aria-selected="false">Fecha</button>
                        </li>
                        <li class="nav-item waves-effect waves-light">
                        <button class="nav-link" id="fecha2-tab" data-toggle="tab" href="#fecha2" role="tab" aria-controls="fecha2" aria-selected="false">Fecha 2</button>
                        </li>*/%>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <%
                        for (int i = 0; i < fechas.size(); i++) {
                            out.print("<div class=\"tab-pane fade my-3\" id=\"" + fechas.get(i) + "\" role=\"tabpanel\" aria-labelledby=\"" + fechas.get(i) + "-tab\">\n" +
                                    "       <div class=\"list-group\">");
                            for (Funcion funcion : pelicula.getFuncionesPeli()) {
                                if (funcion.getDia().equals(fechas.get(i))) {
                                    out.print("<button href=\"#\" class=\"list-group-item list-group-item-action\">" + funcion.getHora() + " - Sala: "+ funcion.getCod_sala() +"</button>");
                                }
                            }
                            out.print("</div>\n" +
                                    "</div>");
                        }
                    %>
                    <%/*<div class="tab-pane fade my-3" id="fecha" role="tabpanel" aria-labelledby="fecha-tab">
                        <div class="list-group">
                            <button href="#" class="list-group-item list-group-item-action">Horario 1 fecha 1</button>
                            <button href="#" class="list-group-item list-group-item-action">Horario 2 fecha 1</button>
                        </div>
                    </div>
                    <div class="tab-pane fade my-3" id="fecha2" role="tabpanel" aria-labelledby="fecha2-tab">
                        <div class="list-group">
                            <button href="#" class="list-group-item list-group-item-action">Horario 1 fecha 2</button>
                            <button href="#" class="list-group-item list-group-item-action">Horario 2 fecha 2</button>
                        </div>
                    </div>*/%>
                </div>

            </div>
        </div>
    </div>
    </div>
    <style>
        .user{
        <% if (login.getPersona_logueada() != 2 && login.getPersona_logueada() != 1) {out.print("display: none");}%>
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
