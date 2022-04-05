package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class MultiplexState implements State {
    private static MultiplexState instance;

    @Override
    public String cambiarPagina() {
        return "multiplex.jsp";
    }

    public static MultiplexState getInstance(){
        if (instance == null) {
            instance = new MultiplexState();
        }
        return instance;
    }
}
