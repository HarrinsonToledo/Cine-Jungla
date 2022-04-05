package app.java.cinejungla.PaginaState.Estados;

import app.java.cinejungla.PaginaState.State;

public class LoginState implements State {
    private static LoginState instance;

    @Override
    public String cambiarPagina() {
        return "login.jsp";
    }

    public static LoginState getInstance(){
        if (instance == null) {
            instance = new LoginState();
        }
        return instance;
    }
}
