<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="app.java.cinejungla.Comands" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cine Jungla - Acceso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="Estilos/index-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="navbar navbar-dark bg-dark mb-0 px-5" id="nav-bar">
        <a href="#"><h1 style="color: white"><b>Cine jungla</b></h1></a>
        <a href="acceso.jsp"><button class="btn btn-danger my-2 my-sm-0" type="submit">Acceder</button></a>
    </nav>
    <div id="main-container" class="container">
        <h2 class="title"><b>Puntos Multiplex</b></h2>

        <form action="hello-servlet">
            <button id="titan" type="submit" name="boton" value="titan">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://img.lalr.co/cms/2020/08/25110421/TITAN2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Titan Plaza - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="unicentro" type="submit" name="boton" value="unicentro">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://confidencialcolombia.com/wp-content/uploads/2020/06/unicentro-1-scaled.jpg.webp" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Unicentro - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="plaza-central" type="submit" name="boton" value="plaza-central">
                <div  class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://www.semana.com/resizer/JkE44R4DOcknyKWvnC6V29cAu28=/1200x675/filters:format(jpg):quality(50)//cloudfront-us-east-1.images.arcpublishing.com/semana/HUFPZ5NJVRHSFKLYY5P5YGNXOU.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Plaza Central - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="gran-estacion" type="submit" name="boton" value="gran-estacion">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="http://4.bp.blogspot.com/-lm_SKduB5cU/U_-CIroziKI/AAAAAAAAGKA/RZr7xNipvGQ/s1600/Gran-Estaci%C3%B3n-Bogot%C3%A1.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Gran Estación - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="embajador" type="submit" name="boton" value="embajador">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://res.cloudinary.com/civico/image/upload/c_fit,f_auto,fl_lossy,h_1200,q_auto:low,w_1200/v1422034516/entity/image/file/2ab/001/520d3e1f31e93c55770012ab.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Embajador(centro) - Bogota</p>
                    </div>
                </div>
            </button>
            <button id="las-americas" type="submit" name="boton" value="las-americas">
                <div class="card" style="width: 25em; margin-bottom: 2%;">
                    <img class="card-img-top img-cines" src="https://res.cloudinary.com/civico/image/upload/c_fit,f_auto,fl_lossy,h_1200,q_auto:low,w_1200/v1445381643/entity/image/file/02d/000/5626c60ab9dd5d7bac00002d.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">Multiplex Las Americas - Bogota</p>
                    </div>
                </div>
            </button>
        </form>
    </div>
</body>
</html>