package app.java.cinejungla;

public class Comands {

    public static Comands instance;
    public int comando_multiplex = 1;
    public int comando_login = 1;
    public int persona_logueada = 0;

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

    public static Comands getInstance() {
        if (instance == null) {
            instance = new Comands();
        }
        return instance;
    }
}
