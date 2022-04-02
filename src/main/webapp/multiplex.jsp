<%@ page import="app.java.cinejungla.Comands" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Funciones.Funcion" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.PuntosCineJungla" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.MultiplexBuilder" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.PuntoAgil.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26/3/2022
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands comando = Comands.getInstance();
    PuntosCineJungla puntoCJ = new PuntosCineJungla();
    String texto = "";

    ArrayList<String> imprimir = new ArrayList<>();

    switch (comando.getComando_multiplex()) {
        case 1:
            texto = "Titan";
            MultiplexBuilder titan = new Titan();
            puntoCJ.setMultiplexBuilder(titan);
            break;
        case 2:
            MultiplexBuilder unicentro = new Unicentro();
            puntoCJ.setMultiplexBuilder(unicentro);
            texto = "Unicentro";
            break;
        case 3:
            MultiplexBuilder plazaCentral = new PlazaCentral();
            puntoCJ.setMultiplexBuilder(plazaCentral);
            texto = "Plaza Central";
            break;
        case 4:
            MultiplexBuilder granEstacion = new GranEstacion();
            puntoCJ.setMultiplexBuilder(granEstacion);
            texto = "Gran Estacion";
            break;
        case 5:
            MultiplexBuilder embajador = new Embajador();
            puntoCJ.setMultiplexBuilder(embajador);
            texto = "Embajador";
            break;
        case 6:
            MultiplexBuilder lasAmericas = new LasAmericas();
            puntoCJ.setMultiplexBuilder(lasAmericas);
            texto = "Las Americas";
            break;
    }

    puntoCJ.contruirPizza();

    for (Funcion peli: puntoCJ.getMultplex().obtener()) {
         imprimir.add("<div class=\"col-sm-3 d-flex justify-content-center\">\n" +
                 "            <div class=\"card\">\n" +
                 "                <img class=\"card-img-top img-peliculas\" src=\"" + peli.getImagen() + "\" alt=\"Card image cap\">\n" +
                 "                <div class=\"card-body\">\n" +
                 "                    <p class=\"card-text\">"+ peli.getNom_pelicula() + "</p>\n" +
                 "                </div>\n" +
                 "            </div>\n" +
                 "            </div>");
    }

    Set<String> hashSet = new HashSet<String>(imprimir);
    imprimir.clear();
    imprimir.addAll(hashSet);
%>
<html>
<head>
    <title>Cine Jungla - <%= texto%> </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="Estilos/multiplex-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
        <img src="recursos/solo-logo.png" width="100">
        <a href="#" style="margin-right: auto"><h2 style="color: white"><b>Cine jungla</b></h2></a>
        <a href="acceso.jsp"><button class="btn btn-danger my-2 my-sm-0" type="submit">Acceder</button></a>
    </nav>
    <div id="main-container" class="container">
        <h2 class="title mb-3"><b>Multiplex <%= texto%> </b></h2>
        <div class="row">
            <%
                for (String txt : imprimir) {
                    out.print(txt);
                }
            %>
        </div>

    </div>
</body>
</html>
