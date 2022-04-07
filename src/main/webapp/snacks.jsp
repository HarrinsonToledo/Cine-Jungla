<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/4/2022
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cine Jungla - Confiteria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="EstilosGeneral/snacks-style.css">
</head>
<body>
    <div class="contenedor">
        <h1 style="text-align: center">Confiteria Cine Jungla</h1>
        <div class="botones">
            <button onclick="mostrarIndividual()" id="individual" class="btn btn-danger" type="submit">Individual</button>
            <button onclick="mostrarCombo()" id="combo" class="btn btn-danger" type="submit">Combos</button>
        </div>
        <form action="hello-servlet">
            <div id="induviduales">
                <h3>individuales</h3>
                <div class="in">
                    <div id="1i" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/content/concessions/5e2b4a4e3b1264000865d018/common/crispetas-medianas-1580247969342.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cripetas sabor a Mantequilla</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas pequeñas</li>
                        </ul>
                        <div class="card-body">
                            <input name="7" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas medianas</li>
                        </ul>
                        <div class="card-body">
                            <input name="8" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas grandes</li>
                        </ul>
                        <div class="card-body">
                            <input name="9" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="2i"  class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/content/concessions/5e2b4a373b1264000865d016/common/maxi-crispetas-1580247958247.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cripetas sabor a Caramelo y Light</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas pequeñas</li>
                        </ul>
                        <div class="card-body">
                            <input name="10" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas medianas</li>
                        </ul>
                        <div class="card-body">
                            <input name="11" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas grandes</li>
                        </ul>
                        <div class="card-body">
                            <input name="12" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="3i" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b1a/common/3767-1581634569171.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Refrescos</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Refresco pequeño</li>
                        </ul>
                        <div class="card-body">
                            <input name="3" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Refresco mediano</li>
                        </ul>
                        <div class="card-body">
                            <input name="4" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Refresco grande</li>
                        </ul>
                        <div class="card-body">
                            <input name="5" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="4i" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b20/common/3770-1581634707857.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Nachos</h5>
                        </div>
                        <div class="card-body">
                            <input name="2" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="5i" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b21/common/3769-1581634584053.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Hot Dog</h5>
                        </div>
                        <div class="card-body">
                            <input name="1" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="6i" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b19/common/3771-1581633971704.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Agua Pura</h5>
                        </div>
                        <div class="card-body">
                            <input name="6" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <button name="boton-snack" value="indi-snack" id="bi" class="btn btn-danger" type="submit">Aceptar</button>
                </div>
            </div>
            <div id="combos">
                <h3>Combos</h3>
                <div class="co">
                    <div id="1c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b1e/common/3759-1626453169246.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Amigo</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas Mantequilla</li>
                        </ul>
                        <div class="card-body">
                            <input name="13" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crsipetas Caramelo y Light</li>
                        </ul>
                        <div class="card-body">
                            <input name="14" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="2c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b1b/common/3763-1626453145430.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Amigo Grande</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas Mantequilla</li>
                        </ul>
                        <div class="card-body">
                            <input name="15" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crsipetas Caramelo y Light</li>
                        </ul>
                        <div class="card-body">
                            <input name="16" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="3c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b1d/common/3761-1626453110871.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Mio</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crispetas Mantequilla</li>
                        </ul>
                        <div class="card-body">
                            <input name="17" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Crsipetas Caramelo y Light</li>
                        </ul>
                        <div class="card-body">
                            <input name="18" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="4c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5f3d96a6a3b42b0007e7d349/common/3887-1600876330779.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Nachos</h5>
                        </div>
                        <div class="card-body">
                            <input name="19" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="5c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5f3d96a6a3b42b0007e7d348/common/3857-1600876285697.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Hot Dog</h5>
                        </div>
                        <div class="card-body">
                            <input name="20" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>

                    <div id="6c" class="card" style="width: 18rem;">
                        <img class="card-img-top" src="https://assets.cinemark-core.com/5db771be04daec00076df3f5/vista/concessions/5e348d8f1a377800081e2b1c/common/3765-1581634696633.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Combo Kid</h5>
                        </div>
                        <div class="card-body">
                            <input name="21" type="number" class="form-control" placeholder="Cantidad" aria-label="cantidad" aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <button name="boton-snack" value="com-snack" id="bc" class="btn btn-danger" type="submit">Aceptar</button>
                </div>
            </div>
        </form>
        <a href="factura.jsp"><button id="omitir" class="btn btn-danger">Omitir</button></a>
    </div>
<script>
function mostrarIndividual() {
    var i = document.getElementById("induviduales");
    var c = document.getElementById("combos");

    i.style.display = "block";
    c.style.display = "none";
}
function mostrarCombo() {
    var i = document.getElementById("induviduales");
    var c = document.getElementById("combos");

    c.style.display = "block";
    i.style.display = "none";
}
</script>
</body>
</html>
