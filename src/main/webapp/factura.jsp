<%@ page import="app.java.cinejungla.Comands" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Sala.SalaFuncion" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Confiteria.CompraSnacks" %>
<%@ page import="app.java.cinejungla.infoPersona.Clientes.SelectCliente" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.PuntosCineJungla" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Sala.Silla" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Confiteria.Snack" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/4/2022
  Time: 00:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String multiplex = "";

    Comands comands = Comands.getInstance();
    SelectPelicula selectPelicula = SelectPelicula.getInstance();
    SelectCliente selectCliente = SelectCliente.getInstance();
    SalaFuncion salaFuncion = SalaFuncion.getInstance();
    CompraSnacks compraSnacks = CompraSnacks.getInstance();

    switch (comands.getComando_multiplex()) {
        case 1:
            multiplex = "Titan";
            break;
        case 2:
            multiplex = "Unicentro";
            break;
        case 3:
            multiplex = "Plaza Central";
            break;
        case 4:
            multiplex = "Gran Estacion";
            break;
        case 5:
            multiplex = "Embajador";
            break;
        case 6:
            multiplex = "Las Americas";
            break;
    }
%>
<html>
<head>
    <title>Cine Jungla Factura</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="EstilosGeneral/factura-style.css">
</head>
<body>
<nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
</nav>
<div id="boleta" class="container mt-5">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <img class="my-3 ml-3" src="recursos/logo-titulo.png" width="100" alt="Logo cine jungla">
            <h3 class="my-3 text-center">Factura</h3><hr><br>
            <div class="row">
                <div class="col-3">
                    <ul class="list-group-flush">
                        <li class="list-group-item">Nombre cliente:</li>
                        <li class="list-group-item">Pelicula:</li>
                        <li class="list-group-item">Multiplex:</li>
                        <li class="list-group-item">Sala:</li>
                        <li class="list-group-item">Fecha:</li>
                        <li class="list-group-item">Silla(s):</li>
                        <br>
                        <li class="list-group-item"><b> Valor total:</b></li>
                    </ul>
                </div>
                <div class="col-9">
                    <ul class="list-group-flush">
                        <li class="list-group-item"><% if (selectCliente.getCedula() == 1){out.print("Foraneo(a)");} else {out.print(selectCliente.getNombre());}%></li>
                        <li class="list-group-item"><%=selectPelicula.getNom_pelicula()%></li>
                        <li class="list-group-item"><%=multiplex%></li>
                        <li class="list-group-item"><%=selectPelicula.getSelectFuncion().getCod_sala()%></li>
                        <li class="list-group-item"><%=selectPelicula.getSelectFuncion().getDia() + " // " + selectPelicula.getSelectFuncion().getHora()%></li>
                        <li class="list-group-item">
                            <%
                                for (Silla silla : salaFuncion.getListado()){
                                   if (silla.getEstado().equals("seleccionado")){
                                       out.print("/ " + silla.getCod_silla() + " /");
                                   }
                                }
                            %>
                        </li>
                        <br>
                        <li class="list-group-item"><b>
                            <%
                                int totalBoleta = 0;
                                for (Silla silla : salaFuncion.getListado()){
                                    if (silla.getEstado().equals("seleccionado")){
                                        totalBoleta = totalBoleta + silla.getValor();
                                    }
                                }
                                out.print("$" + totalBoleta);
                            %>
                        </b></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>
<div id="snacks" class="container my-5">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3 class="my-3 text-center">Snacks</h3><hr><br>
            <ul id="lista" class="list-group-flush mt-2">
                <li class="list-group-item">
                    <div class="row">
                        <div class="col">Cantidad</div>
                        <div class="col">Nombre snack</div>
                        <div class="col">Tipo</div>
                        <div class="col">Costo</div>
                    </div>
                    <br>
                </li>
                <%
                    for (Snack snack : compraSnacks.getListado()) {
                        out.print("<li class=\"list-group-item\">\n" +
                                "                    <div class=\"row\">\n" +
                                "                        <div class=\"col\">"+ snack.getCantidad() +"</div>\n" +
                                "                        <div class=\"col\">"+ snack.getNom_snack() +"</div>\n" +
                                "                        <div class=\"col\">"+ snack.getTipo() +"</div>\n" +
                                "                        <div class=\"col\">"+ snack.getPrecio() +"</div>\n" +
                                "                    </div>\n" +
                                "                </li>");
                    }
                %>
            </ul>
            <hr>
            <div class="row mb-3">
                <div class="col-6"></div>
                <div class="col-3 text-left">
                    <b>Costo total:</b>
                </div>
                <div class="col-3 text-left">
                    <b><%
                        Double totalSnacks = 0.0;
                        for (Snack snack : compraSnacks.getListado()) {
                            totalSnacks = totalBoleta + (snack.getPrecio() * snack.getCantidad());
                        }
                        out.print("$"+totalSnacks);
                    %></b>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>
<div id="botones" class="d-flex justify-content-around my-5 mx-auto">
    <form>
        <button name="pagar" class="btn btn-danger">Pagar</button>
    </form>
    <a href="multiplex.jsp">
        <button class="btn btn-danger">Cancelar</button>
    </a>
</div>
<style>
    #snacks{
    <% if (comands.getCompraConfiteria() == 0) {out.print("display: none");}%>
    }
</style>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
