package app.java.cinejungla;

import app.java.cinejungla.ContenidoMultiplex.PuntosCineJungla;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.ListadoPeliculas;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.Pelicula;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula;
import app.java.cinejungla.PaginaState.Estados.InicioState;
import app.java.cinejungla.PaginaState.Estados.LoginState;
import app.java.cinejungla.PaginaState.Estados.MultiplexState;
import app.java.cinejungla.PaginaState.Estados.PeliculaState;
import app.java.cinejungla.PaginaState.Pagina;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 *
 *   @Autor: Harrinson Toledo Gonzalez 20201020008
 *   @Autor: David Leonardo Florez Percy 20201020045
 *   @Autor: Juan Camilo Herrera Gomez 20191020018
 */

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    private Comands multiplex;
    private Pagina pagina;
    private MultiplexState multiplexState;
    private LoginState loginState;
    private InicioState inicioState;
    private PeliculaState peliculaState;
    private ListadoPeliculas list;
    private SelectPelicula selectPelicula;
    private PuntosCineJungla pcj;

    public void init() {
        message = "Probando github en Intellij";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        multiplex = Comands.getInstance();
        pagina = Pagina.getInstance();
        multiplexState = MultiplexState.getInstance();
        loginState = LoginState.getInstance();
        inicioState = InicioState.getInstance();
        peliculaState = PeliculaState.getInstance();
        list = ListadoPeliculas.getInstance();
        selectPelicula = SelectPelicula.getInstance();
        pcj = PuntosCineJungla.getInstance();


        if (request.getParameter("boton") != null) {
            switch (request.getParameter("boton")) {
                case "empleado":
                    multiplex.setComando_login(1);
                    pagina.setState(loginState);
                    break;
                case "cliente":
                    multiplex.setComando_login(2);
                    pagina.setState(loginState);
                    break;
                case "login-usuarios":
                    pagina.setState(inicioState);
                    break;
                case "login-clientes":
                    pagina.setState(inicioState);
                    break;
                case "titan":
                    multiplex.setComando_multiplex(1);
                    pagina.setState(multiplexState);
                    break;
                case "unicentro":
                    multiplex.setComando_multiplex(2);
                    pagina.setState(multiplexState);
                    break;
                case "plaza-central":
                    multiplex.setComando_multiplex(3);
                    pagina.setState(multiplexState);
                    break;
                case "gran-estacion":
                    multiplex.setComando_multiplex(4);
                    pagina.setState(multiplexState);
                    break;
                case "embajador":
                    multiplex.setComando_multiplex(5);
                    pagina.setState(multiplexState);
                    break;
                case "las-americas":
                    multiplex.setComando_multiplex(6);
                    pagina.setState(multiplexState);
                    break;
            }
        }

        if (request.getParameter("boton-peli") != null) {
            for (Pelicula nombre : list.getPeliculas()) {
                if (nombre.getNom_pelicula().equals(request.getParameter("boton-peli"))) {
                    selectPelicula.setNom_pelicula(nombre.getNom_pelicula());
                    selectPelicula.setDuracion(nombre.getDuracion());
                    selectPelicula.setDescripcion(nombre.getDescripcion());
                    selectPelicula.setImagen(nombre.getImagen());
                    selectPelicula.setFuncionesPeli(pcj.getMultplex().obtener());
                }
            }

            pagina.setState(peliculaState);
        }

        request.getRequestDispatcher(pagina.getPagina()).forward(request,response);
    }

    public void destroy() {
    }
}