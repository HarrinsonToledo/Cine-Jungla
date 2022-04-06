package app.java.cinejungla.PaginaState;

public class Pagina {
    private State actualState;
    private static Pagina intance;

    public void setState(State state) {
        actualState = state;
    }

    public State getActualState() {
        return actualState;
    }

    public String getPagina() {
        return actualState.cambiarPagina();
    }

    public static Pagina getInstance() {
        if (intance == null) {
            intance = new Pagina();
        }
        return intance;
    }
}
