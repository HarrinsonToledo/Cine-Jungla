package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class InicioState implements State {
    private static InicioState instance;

    @Override
    public String cambiarPagina() {
        return "index.jsp";
    }

    public static InicioState getInstance(){
        if (instance == null) {
            instance = new InicioState();
        }
        return instance;
    }
}
