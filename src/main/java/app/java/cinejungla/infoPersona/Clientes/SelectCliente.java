package app.java.cinejungla.infoPersona.Clientes;

public class SelectCliente extends Cliente{
    private static SelectCliente instance;

    public static SelectCliente getInstance(){
        if (instance == null) {
            instance= new SelectCliente();
        }
        return instance;
    }
}
