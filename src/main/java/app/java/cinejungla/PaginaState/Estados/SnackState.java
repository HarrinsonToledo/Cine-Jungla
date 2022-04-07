package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class SnackState implements State {
    private static SnackState instance;

    @Override
    public String cambiarPagina() {
        return "snacks.jsp";
    }

    public static SnackState getInstance(){
        if (instance == null) {
            instance = new SnackState();
        }
        return instance;
    }
}
