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
import app.java.cinejungla.infoPersona.Clientes.SelectCliente;
import app.java.cinejungla.infoPersona.Login;
import app.java.cinejungla.infoPersona.Usuarios.SelectUsuario;

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
    private int stateCliente;
    //---------
    private Comands comando;
    //---------
    private PuntosCineJungla pcj;
    //---------
    private Pagina pagina;
    private Pagina paginaUsuario = new Pagina();
    private MultiplexState multiplexState;
    private LoginState loginState;
    private InicioState inicioState;
    private PeliculaState peliculaState;
    //---------
    private ListadoPeliculas list;
    private SelectPelicula selectPelicula;
    //---------
    private Login inicioSecion;

    private void cargarInstacias() {
        comando = Comands.getInstance();
        pagina = Pagina.getInstance();
        multiplexState = MultiplexState.getInstance();
        loginState = LoginState.getInstance();
        inicioState = InicioState.getInstance();
        peliculaState = PeliculaState.getInstance();
        list = ListadoPeliculas.getInstance();
        selectPelicula = SelectPelicula.getInstance();
        pcj = PuntosCineJungla.getInstance();
        inicioSecion = Login.getInstance();
    }

    public void cambioPagina(String parametro) {
        switch (parametro) {
            case "empleado":
                comando.setComando_login(1);
                pagina.setState(loginState);
                break;
            case "cliente":
                comando.setComando_login(2);
                pagina.setState(loginState);
                break;
            case "Titan":
                comando.setComando_multiplex(1);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
            case "Unicentro":
                comando.setComando_multiplex(2);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
            case "Plaza Central":
                comando.setComando_multiplex(3);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
            case "Gran Estacion":
                comando.setComando_multiplex(4);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
            case "Embajador":
                comando.setComando_multiplex(5);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
            case "Las Americas":
                comando.setComando_multiplex(6);
                pagina.setState(multiplexState);
                paginaUsuario.setState(multiplexState);
                break;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        cargarInstacias();
        pagina.setState(inicioState);

        if (request.getParameter("boton") != null) {
            cambioPagina(request.getParameter("boton"));
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
            paginaUsuario.setState(peliculaState);
        }

        if (request.getParameter("boton-login") != null) {
            switch (request.getParameter("boton-login")) {
                case "login-usuarios":
                    if (inicioSecion.loginUsuario(Integer.parseInt(request.getParameter("codigo")), request.getParameter("contraseña"))){
                        comando.setPersona_logueada(1);
                        cambioPagina(inicioSecion.multiplexUsuario());
                    } else {
                        comando.setPersona_logueada(3);
                        pagina.setState(loginState);
                    }
                    break;
                case "login-clientes":
                    if (inicioSecion.loginCliente(Integer.parseInt(request.getParameter("cedula")), request.getParameter("password"))){
                        comando.setPersona_logueada(2);
                        if (paginaUsuario.getActualState() != null ) {
                            pagina.setState(paginaUsuario.getActualState());
                        }
                    } else {
                        comando.setPersona_logueada(3);
                        pagina.setState(loginState);
                    }
                    break;
            }
        }

        request.getRequestDispatcher(pagina.getPagina()).forward(request,response);
    }

    public void destroy() {
    }
}