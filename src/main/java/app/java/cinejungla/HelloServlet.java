package app.java.cinejungla;

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

    public void init() {
        message = "Probando github en Intellij";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Comands multiplex = Comands.getInstance();

        switch (request.getParameter("boton")) {
            case "titan":
                multiplex.setComando_multiplex(1);
                break;
            case "unicentro":
                multiplex.setComando_multiplex(2);
                break;
            case "plaza-central":
                multiplex.setComando_multiplex(3);
                break;
            case "gran-estacion":
                multiplex.setComando_multiplex(4);
                break;
            case "embajador":
                multiplex.setComando_multiplex(5);
                break;
            case "las-americas":
                multiplex.setComando_multiplex(6);
                break;
        }

        request.getRequestDispatcher("multiplex.jsp").forward(request,response);
    }

    public void destroy() {
    }
}