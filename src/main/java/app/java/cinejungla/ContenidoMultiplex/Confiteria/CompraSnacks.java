package app.java.cinejungla.ContenidoMultiplex.Confiteria;

import java.util.ArrayList;

public class CompraSnacks{
    private static CompraSnacks instance;
    private ArrayList<Snack> comprando = new ArrayList<>();

    public void setListado(Snack compra) {
        comprando.add(compra);
    }

    public ArrayList<Snack> getListado() {
        return comprando;
    }

    public static CompraSnacks getInstance() {
        if (instance == null) {
            instance = new CompraSnacks();
        }
        return instance;
    }
}
