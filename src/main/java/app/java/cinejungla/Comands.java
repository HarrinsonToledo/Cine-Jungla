package app.java.cinejungla;

public class Comands {

    private static Comands instance;
    private int comando_multiplex = 1;
    private int comando_login = 1;
    private int persona_logueada = 0;
    private int registrar = 0;

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

    public static Comands getInstance() {
        if (instance == null) {
            instance = new Comands();
        }
        return instance;
    }
}
