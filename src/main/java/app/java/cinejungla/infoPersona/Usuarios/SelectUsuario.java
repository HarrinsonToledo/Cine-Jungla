package app.java.cinejungla.infoPersona.Usuarios;

public class SelectUsuario extends Usuario{
    private static SelectUsuario instance;

    public static SelectUsuario getInstance(){
        if (instance == null) {
            instance = new SelectUsuario();
        }
        return instance;
    }
}
