package app.java.cinejungla;

import app.java.cinejungla.ContenidoMultiplex.Confiteria.CompraSnacks;
import app.java.cinejungla.ContenidoMultiplex.Confiteria.ListadoSnacks;
import app.java.cinejungla.ContenidoMultiplex.Confiteria.Snack;
import app.java.cinejungla.ContenidoMultiplex.PuntosCineJungla;
import app.java.cinejungla.ContenidoMultiplex.Sala.SalaFuncion;
import app.java.cinejungla.ContenidoMultiplex.Sala.Silla;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Funcion;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.ListadoPeliculas;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.Pelicula;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula;
import app.java.cinejungla.GuardarFactura.FacturaPagada;
import app.java.cinejungla.PaginaState.Estados.*;
import app.java.cinejungla.PaginaState.Pagina;
import app.java.cinejungla.infoPersona.Clientes.SelectCliente;
import app.java.cinejungla.infoPersona.Login;
import app.java.cinejungla.infoPersona.RegistrarCliente;
import app.java.cinejungla.infoPersona.Usuarios.SelectUsuario;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.swing.*;

/**
 *
 *   @Autor: Harrinson Toledo Gonzalez 20201020008
 *   @Autor: David Leonardo Florez Percy 20201020045
 *   @Autor: Juan Camilo Herrera Gomez 20191020018
 */

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
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
    private RegClienteState regClienteState;
    private SalaState salaState;
    private SnackState snackState;
    private FacturaState facturaState;
    private AdminState adminState;
    //---------
    private ListadoPeliculas list;
    private SelectPelicula selectPelicula;
    //---------
    private Login inicioSecion;
    //---------
    private RegistrarCliente registrarCliente;
    //---------
    private SalaFuncion salaFuncion;
    //---------
    private ListadoSnacks listadoSnacks;
    private CompraSnacks compraSnacks;
    //---------
    private FacturaPagada facturaPagada;

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
        registrarCliente = RegistrarCliente.getInstance();
        regClienteState = RegClienteState.getInstance();
        salaState = SalaState.getInstance();
        salaFuncion = SalaFuncion.getInstance();
        snackState = SnackState.getInstance();
        facturaState = FacturaState.getInstance();
        adminState = AdminState.getInstance();
        listadoSnacks = ListadoSnacks.getInstance();
        compraSnacks = CompraSnacks.getInstance();
        facturaPagada = FacturaPagada.getInstance();
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

        } else if (request.getParameter("boton-peli") != null) {
            for (Pelicula nombre : list.getPeliculas()) {
                if (nombre.getNom_pelicula().equals(request.getParameter("boton-peli"))) {
                    selectPelicula.setId_pelicula(nombre.getId_pelicula());
                    selectPelicula.setNom_pelicula(nombre.getNom_pelicula());
                    selectPelicula.setDuracion(nombre.getDuracion());
                    selectPelicula.setDescripcion(nombre.getDescripcion());
                    selectPelicula.setImagen(nombre.getImagen());
                    selectPelicula.setFuncionesPeli(pcj.getMultplex().obtener());
                }
            }
            pagina.setState(peliculaState);
            paginaUsuario.setState(peliculaState);

        } else if (request.getParameter("boton-login") != null) {
            switch (request.getParameter("boton-login")) {
                case "login-usuarios":
                    if (inicioSecion.loginUsuario(Integer.parseInt(request.getParameter("codigo")), request.getParameter("contraseña"))){
                        comando.setPersona_logueada(1);
                        if (inicioSecion.cargoUsuario().equals("Director")) {
                            pagina.setState(adminState);
                        } else {
                            inicioSecion.loginCliente(1,"DESCONOCIDO");
                            cambioPagina(inicioSecion.multiplexUsuario());
                        }
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

        } else if (request.getParameter("registrar") != null) {
            int proceso = registrarCliente.insertar(request.getParameter("nombre"), Integer.parseInt(request.getParameter("cedula")), request.getParameter("contraseña"));

            if (proceso == 2) {
                comando.setPersona_logueada(2);
                inicioSecion.loginCliente(Integer.parseInt(request.getParameter("cedula")), request.getParameter("contraseña"));
                if (paginaUsuario.getActualState() != null ) {
                    pagina.setState(paginaUsuario.getActualState());
                }
                proceso = 0;
            } else {
                pagina.setState(regClienteState);
            }
            comando.setRegistrar(proceso);

        } else if (request.getParameter("cerrar-sesion") != null) {
            inicioSecion.cerrarSesion(comando.getPersona_logueada());
            comando.setPersona_logueada(0);
            pagina.setState(inicioState);

        } else if (request.getParameter("funcion") != null) {
            if (comando.getPersona_logueada() == 0) {
                comando.setPrevencion(1);
                pagina.setState(paginaUsuario.getActualState());
            } else {
                for (Funcion funcion : selectPelicula.getFuncionesPeli()) {
                    if (funcion.getId_funcion() == Integer.parseInt(request.getParameter("funcion"))) {
                        selectPelicula.setSelectFuncion(funcion);
                        salaFuncion.setListado(funcion.getCod_sala());
                        pagina.setState(salaState);
                    }
                }
            }
        } else if (request.getParameter("boton-sala") != null) {
            for (int i = 0; i < salaFuncion.getListado().size(); i++) {
                if (salaFuncion.getListado().get(i).getEstado().equals("seleccionado")) {
                    salaFuncion.getListado().get(i).setEstado("libre");
                }
            }

            String[] array = request.getParameter("sillas").split("-");

            if (array == null || array[0].equals("")) {
                pagina.setState(salaState);
            } else {
                for (int i = 0; i < salaFuncion.getListado().size(); i++) {
                    for (String cod: array) {
                        if (cod.equals(salaFuncion.getListado().get(i).getCod_silla())) {
                            salaFuncion.getListado().get(i).setEstado("seleccionado");
                        }
                    }
                }
                pagina.setState(snackState);
            }
        } else if (request.getParameter("boton-snack") != null) {
            String id = "";

            for (Snack snack : listadoSnacks.getListado()) {
                id = "" + snack.getId_snack();

                JOptionPane.showMessageDialog(null, request.getParameter(id));
                JOptionPane.showMessageDialog(null, snack.getId_snack());

                if (request.getParameter(id) == null || request.getParameter(id).equals("")) {
                } else {
                    snack.setCantidad(Integer.parseInt(request.getParameter(id)));
                    compraSnacks.setListado(snack);
                    comando.setCompraConfiteria(1);
                    pagina.setState(facturaState);
                }
            }
        } else if (request.getParameter("pagar") != null) {
            facturaPagada.guardar();
            pagina.setState(multiplexState);
        }

        request.getRequestDispatcher(pagina.getPagina()).forward(request,response);
    }

    public void destroy() {
    }
}