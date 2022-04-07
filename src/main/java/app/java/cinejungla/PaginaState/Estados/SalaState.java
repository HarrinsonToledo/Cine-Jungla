package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class SalaState implements State {
    private static SalaState instance;

    @Override
    public String cambiarPagina() {
        return "sala.jsp";
    }

    public static SalaState getInstance(){
        if (instance == null) {
            instance= new SalaState();
        }
        return instance;
    }
}
