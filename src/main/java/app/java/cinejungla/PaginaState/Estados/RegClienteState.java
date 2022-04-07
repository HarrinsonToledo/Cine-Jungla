package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class RegClienteState implements State {
    private static RegClienteState instance;

    @Override
    public String cambiarPagina() {
        return "registrarse.jsp";
    }

    public static RegClienteState getInstance() {
        if (instance == null) {
            instance= new RegClienteState();
        }
        return instance;
    }
}
