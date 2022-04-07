package app.java.cinejungla;

public class Comands {

    private static Comands instance;
    private int comando_multiplex = 1;
    private int comando_login = 1;
    private int persona_logueada = 0;
    private int registrar = 0;
    private int prevencion = 0;
    private int compraConfiteria = 0;

    public Comands() {

    }

    public int getComando_multiplex() {
        return comando_multiplex;
    }

    public void setComando_multiplex(int comando_multiplex) {
        this.comando_multiplex = comando_multiplex;
    }

    public int getComando_login() {
        return comando_login;
    }

    public void setComando_login(int comando_login) {
        this.comando_login = comando_login;
    }

    public int getPersona_logueada() {
        return persona_logueada;
    }

    public void setPersona_logueada(int persona_logueada) {
        this.persona_logueada = persona_logueada;
    }

    public int getRegistrar() {
        return registrar;
    }

    public void setRegistrar(int registrar) {
        this.registrar = registrar;
    }

    public int getPrevencion() {
        return prevencion;
    }

    public void setPrevencion(int prevencion) {
        this.prevencion = prevencion;
    }

    public int getCompraConfiteria() {
        return compraConfiteria;
    }

    public void setCompraConfiteria(int compraConfiteria) {
        this.compraConfiteria = compraConfiteria;
    }

    public static Comands getInstance() {
        if (instance == null) {
            instance = new Comands();
        }
        return instance;
    }
}
