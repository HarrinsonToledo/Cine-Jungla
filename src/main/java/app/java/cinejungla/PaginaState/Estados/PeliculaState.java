package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class PeliculaState implements State {
    private static PeliculaState instance;

    @Override
    public String cambiarPagina() {
        return "pelicula.jsp";
    }

    public static PeliculaState getInstance() {
        if (instance == null) {
            instance = new PeliculaState();
        }
        return instance;
    }
}
