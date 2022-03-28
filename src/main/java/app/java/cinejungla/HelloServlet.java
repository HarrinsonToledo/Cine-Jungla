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
            case "empleado":
                multiplex.setComando_login(1);
                request.getRequestDispatcher("login.jsp").forward(request,response);
                break;
            case "cliente":
                multiplex.setComando_login(2);
                request.getRequestDispatcher("login.jsp").forward(request,response);
                break;
            case "login-usuarios":
                request.getRequestDispatcher("index.jsp").forward(request,response);
                break;
            case "login-clientes":
                request.getRequestDispatcher("index.jsp").forward(request,response);
                break;
            case "titan":
                multiplex.setComando_multiplex(1);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
            case "unicentro":
                multiplex.setComando_multiplex(2);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
            case "plaza-central":
                multiplex.setComando_multiplex(3);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
            case "gran-estacion":
                multiplex.setComando_multiplex(4);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
            case "embajador":
                multiplex.setComando_multiplex(5);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
            case "las-americas":
                multiplex.setComando_multiplex(6);
                request.getRequestDispatcher("multiplex.jsp").forward(request,response);
                break;
        }
    }

    public void destroy() {
    }
}