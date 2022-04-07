package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class FacturaState implements State {
    private static FacturaState instance;

    @Override
    public String cambiarPagina() {
        return "factura.jsp";
    }

    public static FacturaState getInstance() {
        if (instance == null) {
            instance = new FacturaState();
        }
        return instance;
    }
}
