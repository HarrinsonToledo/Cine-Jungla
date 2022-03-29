<%@ page import="app.java.cinejungla.Comands" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26/3/2022
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands multiplex = Comands.getInstance();
    String texto = "";

    switch (multiplex.getComando_multiplex()) {
        case 1:
            texto = "Titan";
            break;
        case 2:
            texto = "Unicentro";
            break;
        case 3:
            texto = "Plaza Central";
            break;
        case 4:
            texto = "Gran Estacion";
            break;
        case 5:
            texto = "Embajador";
            break;
        case 6:
            texto = "Las Americas   ";
            break;
    }
%>
<html>
<head>
    <title>Cine Jungla - <%= texto%> </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="Estilos/index-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
        <a href="index.jsp"><h1 style="color: white"><b>Cine jungla</b></h1></a>
        <a href="acceso.jsp"><button class="btn btn-danger my-2 my-sm-0" type="submit">Acceder</button></a>
    </nav>
    <div id="main-container" class="container">
        <h2 class="title mb-3"><b>Multiplex <%= texto%> </b></h2>
        <div class="row">
            <div class="col-sm-3 d-flex justify-content-center">
            <div class="card">
                <img class="card-img-top img-peliculas" src="https://es.web.img3.acsta.net/pictures/22/01/27/16/40/2914301.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Batman</p>
                </div>
            </div>
            </div>
            <div class="col-sm-3 d-flex justify-content-center">
            <div class="card">
                <img class="card-img-top img-peliculas" src="https://as01.epimg.net/meristation/imagenes/2021/12/07/noticias/1638895070_634543_1638895252_sumario_normal.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Morbius</p>
                </div>
            </div>
            </div>
            <div class="col-sm-3 d-flex justify-content-center">
            <div class="card">
                <img class="card-img-top img-peliculas" src="https://es.web.img3.acsta.net/pictures/22/02/18/10/20/5195258.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Sonic 2</p>
                </div>
            </div>
            </div>
            <div class="col-sm-3 d-flex justify-content-center">
            <div class="card">
                <img class="card-img-top img-peliculas" src="https://as01.epimg.net/meristation/imagenes/2022/01/26/noticias/1643181930_566133_1643182063_sumario_normal.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Uncharted</p>
                </div>
            </div>
            </div>
        </div>

    </div>
</body>
</html>
