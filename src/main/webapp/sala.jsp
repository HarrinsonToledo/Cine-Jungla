<%@ page import="app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula" %>
<%@ page import="app.java.cinejungla.ContenidoMultiplex.Sala.SalaFuncion" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/4/2022
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SelectPelicula pelicula = SelectPelicula.getInstance();
    SalaFuncion sala = SalaFuncion.getInstance();
%>
<html>
<head>
    <title>Cine Jungla - Sala : <%= pelicula.getSelectFuncion().getCod_sala()%></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="EstilosGeneral/sala-style.css">
</head>
<body>
<div class="contenedor">
    <h2 style="text-align: center">Sala <%= pelicula.getSelectFuncion().getCod_sala()%></h2>
    <div class="mx-auto">

        <!--    sillas vip     -->
        <div class="row my-2">
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(50).getEstado()%>" onclick="seleccionar(this)" value="P11"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(51).getEstado()%>" onclick="seleccionar(this)" value="P12"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(52).getEstado()%>" onclick="seleccionar(this)" value="P13"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(53).getEstado()%>" onclick="seleccionar(this)" value="P14"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(54).getEstado()%>" onclick="seleccionar(this)" value="P15"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(55).getEstado()%>" onclick="seleccionar(this)" value="P16"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(56).getEstado()%>" onclick="seleccionar(this)" value="P17"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(57).getEstado()%>" onclick="seleccionar(this)" value="P18"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(58).getEstado()%>" onclick="seleccionar(this)" value="P19"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(59).getEstado()%>" onclick="seleccionar(this)" value="P20"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <div class="row my-2">
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(40).getEstado()%>" onclick="seleccionar(this)" value="P1"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(41).getEstado()%>" onclick="seleccionar(this)" value="P2"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(42).getEstado()%>" onclick="seleccionar(this)" value="P3"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(43).getEstado()%>" onclick="seleccionar(this)" value="P4"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(44).getEstado()%>" onclick="seleccionar(this)" value="P5"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(45).getEstado()%>" onclick="seleccionar(this)" value="P6"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(46).getEstado()%>" onclick="seleccionar(this)" value="P7"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(47).getEstado()%>" onclick="seleccionar(this)" value="P8"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(48).getEstado()%>" onclick="seleccionar(this)" value="P9"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla vip" type="button" name="<%=sala.getListado().get(49).getEstado()%>" onclick="seleccionar(this)" value="P10"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <br>

        <!--    sillas estandar    -->

        <div class="row my-2">
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(30).getEstado()%>" onclick="seleccionar(this)" value="N1"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(31).getEstado()%>" onclick="seleccionar(this)" value="N2"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(32).getEstado()%>" onclick="seleccionar(this)" value="N3"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(33).getEstado()%>" onclick="seleccionar(this)" value="N4"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(34).getEstado()%>" onclick="seleccionar(this)" value="N5"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(35).getEstado()%>" onclick="seleccionar(this)" value="N6"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(36).getEstado()%>" onclick="seleccionar(this)" value="N7"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(37).getEstado()%>" onclick="seleccionar(this)" value="N8"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(38).getEstado()%>" onclick="seleccionar(this)" value="N9"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(39).getEstado()%>" onclick="seleccionar(this)" value="N10"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <div class="row my-2">
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(20).getEstado()%>" onclick="seleccionar(this)" value="M1"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(21).getEstado()%>" onclick="seleccionar(this)" value="M2"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(22).getEstado()%>" onclick="seleccionar(this)" value="M3"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(23).getEstado()%>" onclick="seleccionar(this)" value="M4"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(24).getEstado()%>" onclick="seleccionar(this)" value="M5"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(25).getEstado()%>" onclick="seleccionar(this)" value="M6"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(26).getEstado()%>" onclick="seleccionar(this)" value="M7"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(27).getEstado()%>" onclick="seleccionar(this)" value="M8"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(28).getEstado()%>" onclick="seleccionar(this)" value="M9"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(29).getEstado()%>" onclick="seleccionar(this)" value="M10"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <div class="row my-2">
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(10).getEstado()%>" onclick="seleccionar(this)" value="J1"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(11).getEstado()%>" onclick="seleccionar(this)" value="J2"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(12).getEstado()%>" onclick="seleccionar(this)" value="J3"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(13).getEstado()%>" onclick="seleccionar(this)" value="J4"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(14).getEstado()%>" onclick="seleccionar(this)" value="J5"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(15).getEstado()%>" onclick="seleccionar(this)" value="J6"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(16).getEstado()%>" onclick="seleccionar(this)" value="J7"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(17).getEstado()%>" onclick="seleccionar(this)" value="J8"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(18).getEstado()%>" onclick="seleccionar(this)" value="J9"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(19).getEstado()%>" onclick="seleccionar(this)" value="J10"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <div class="row my-2">
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(0).getEstado()%>" onclick="seleccionar(this)" value="L1"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(1).getEstado()%>" onclick="seleccionar(this)" value="L2"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(2).getEstado()%>" onclick="seleccionar(this)" value="L3"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(3).getEstado()%>" onclick="seleccionar(this)" value="L4"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(4).getEstado()%>" onclick="seleccionar(this)" value="L5"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(5).getEstado()%>" onclick="seleccionar(this)" value="L6"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(6).getEstado()%>" onclick="seleccionar(this)" value="L7"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(7).getEstado()%>" onclick="seleccionar(this)" value="L8"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(8).getEstado()%>" onclick="seleccionar(this)" value="L9"><i class="fa-solid fa-couch fa-4x"></i></button></div>
            <div class="col"><button class="btn-silla" type="button" name="<%=sala.getListado().get(9).getEstado()%>" onclick="seleccionar(this)" value="L10"><i class="fa-solid fa-couch fa-4x"></i></button></div>
        </div>
        <form action="hello-servlet" onsubmit="enviar()">
            <input id="contenido" name="sillas" type="text" value="">
            <button id="aceptar" name="boton-sala" value="sala" class="btn btn-danger" type="submit">Aceptar</button>
        </form>
    </div>
</div>
<!--
<button class="btn btn-danger" onclick="limpiar()">Limpiar seleccion</button>
-->
<script>
    let x = document.querySelectorAll("[name=ocupado]");
    for(var i=0; i<x.length; i++){
        x[i].disabled = "none"
        x[i].classList.add("ocupado");
    }

    function seleccionar(boton){
        if(boton.getAttribute("name") == "libre"){
            boton.classList.add("selec");
            boton.setAttribute("name", "seleccionado");
        } else {
            if(boton.getAttribute("name") == "seleccionado"){
                boton.classList.remove("selec");
                boton.setAttribute("name", "libre");
            }
        }
    }

    function registrar() {
        let x = document.querySelectorAll("[name=seleccionado]");
        var contenido = document.querySelector("#contenido");
        contenido.setAttribute("value", "");
        var n = "";
        if (x.length > 0) {
            for (var i=0; i<x.length; i++) {
                n = n + x[i].value + "-";
            }
            contenido.setAttribute("value", n);
        }
    }

    function enviar(){
        registrar();

        var input = document.getElementById("contenido").value;

        if(input === null || input === ""){
            alert("No has seleccionado ninguna silla");
        }
    }
    /*
    function limpiar(){
        let x = document.querySelectorAll("[name=seleccionado]")
        for(var i=0; i<x.length; i++){
            x[i].setAttribute("name", "libre");
            x[i].classList.remove("selec");
            x[i].disabled = ""
        }
    }
    */
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
