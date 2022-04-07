package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class AdminState implements State {
    private static AdminState instance;

    @Override
    public String cambiarPagina() {
        return "admin.jsp";
    }

    public static AdminState getInstance() {
        if (instance == null) {
            instance = new AdminState();
        }
        return instance;
    }
}
