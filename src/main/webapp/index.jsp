<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="app.java.cinejungla.Comands" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.Usuario" %>
<%@ page import="app.java.cinejungla.infoPersona.Usuarios.SelectUsuario" %>
<%@ page import="app.java.cinejungla.infoPersona.Clientes.SelectCliente" %>
<%
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
<!DOCTYPE html>
<html>
<head>
    <title>Cine Jungla - Acceso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="EstilosGeneral/index-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
        <img src="recursos/solo-logo.png" width="100">
        <a href="#" style="margin-right: auto"><h2 style="color: white"><b>Cine Jungla</b></h2></a>
        <a href="acceso.jsp"><button class="btn btn-danger my-2 my-sm-0" type="submit" <% if (login.getPersona_logueada() != 0) {out.print("style=\"display: none\"");}%>>Acceder</button></a>
        <img class="user" id="user" src="recursos/social-media.gif" width="50">
        <h4 class="user" style="color: white;"> <% if (nombre != null) { out.print(nombre[0]); }%> </h4>
        <form class="cerrarSesion" action="hello-servlet">
            <button name="cerrar-sesion" id="cerrar" value="cerrar" class="btn btn-danger my-2 my-sm-0" type="submit">Cerrar Sesion</button>
        </form>
    </nav>
    <div id="main-container" class="container">
        <h2 class="title"><b>Puntos Multiplex</b></h2>

        <form class="multiplex" action="hello-servlet">
            <button id="Titan" type="submit" name="boton" value="Titan">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://img.lalr.co/cms/2020/08/25110421/TITAN2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Titan Plaza - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="Unicentro" type="submit" name="boton" value="Unicentro">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://confidencialcolombia.com/wp-content/uploads/2020/06/unicentro-1-scaled.jpg.webp" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Unicentro - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="Plaza Central" type="submit" name="boton" value="Plaza Central">
                <div  class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://www.semana.com/resizer/JkE44R4DOcknyKWvnC6V29cAu28=/1200x675/filters:format(jpg):quality(50)//cloudfront-us-east-1.images.arcpublishing.com/semana/HUFPZ5NJVRHSFKLYY5P5YGNXOU.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Plaza Central - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="Gran Estacion" type="submit" name="boton" value="Gran Estacion">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="http://4.bp.blogspot.com/-lm_SKduB5cU/U_-CIroziKI/AAAAAAAAGKA/RZr7xNipvGQ/s1600/Gran-Estaci%C3%B3n-Bogot%C3%A1.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Gran Estación - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="Embajador" type="submit" name="boton" value="Embajador">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://res.cloudinary.com/civico/image/upload/c_fit,f_auto,fl_lossy,h_1200,q_auto:low,w_1200/v1422034516/entity/image/file/2ab/001/520d3e1f31e93c55770012ab.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Embajador(centro) - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="Las Americas" type="submit" name="boton" value="Las Americas">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://res.cloudinary.com/civico/image/upload/c_fit,f_auto,fl_lossy,h_1200,q_auto:low,w_1200/v1445381643/entity/image/file/02d/000/5626c60ab9dd5d7bac00002d.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Las Americas - Bogota</p>
                    </div>
                </div>
            </button>
        </form>
    </div>
    <style>
        .user{
            <% if (login.getPersona_logueada() != 2 && login.getPersona_logueada() != 1) {out.print("display: none");}%>
        }

        #cerrar{
            <% if (login.getPersona_logueada() != 2 && login.getPersona_logueada() != 1) {out.print("display: none");}%>
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>